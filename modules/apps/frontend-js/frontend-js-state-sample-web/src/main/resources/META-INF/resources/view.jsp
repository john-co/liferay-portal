<%@ include file="/init.jsp" %>
<%@ taglib uri="http://liferay.com/tld/aui" prefix="aui" %>
<%@ taglib uri="http://liferay.com/tld/react" prefix="react" %>

<div class="row">
	<div class="col">
		<react:component
			module="js/App"
		/>
	</div>

	<div class="col">
		<button id="test-button-jsp">Increment jsp</button>

		<h3>JSP Counter: <span id="test-counter-jsp">0</span></h3>

		<h3>Name: <span id="test-name">Initial Name</span></h3>

		<button id="test-button-react">Increment react</button>

		<aui:script require="@liferay/frontend-js-state-web@1.0.3/index as StateModule, frontend-js-state-sample-web@1.0.0/js/sharedState as SharedState">
			const buttonElementJSP = document.getElementById('test-button-jsp');
			const buttonElementReact = document.getElementById('test-button-react');
			const counterElement = document.getElementById('test-counter-jsp');
			const nameElement = document.getElementById('test-name');

			const State = StateModule.State;

			const counterAtom = State.atom('test-counter-jsp', 0);

			State.subscribe(counterAtom, function(newVal) {
				counterElement.innerText = newVal;
			});

			State.subscribe(SharedState.userAtom, function(event) {
				nameElement.innerText = event.name;
			});

			buttonElementJSP.addEventListener('click', function() {
				State.write(counterAtom, State.read(counterAtom) + 1);
			});

			buttonElementReact.addEventListener('click', function() {
				State.write(SharedState.counterAtomReact, State.read(SharedState.counterAtomReact) + 1);
			});
		</aui:script>
	</div>
</div>